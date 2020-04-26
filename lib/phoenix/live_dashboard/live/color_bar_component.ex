defmodule Phoenix.LiveDashboard.ColorBarComponent do
  use Phoenix.LiveDashboard.Web, :live_component

  def render(assigns) do
    ~L"""
    <div class="progress flex-grow-1 mb-3">
      <%= for {_ , name, value, color} <- @data do %>
        <div
        title="<%=name %> - <%= format_percent(value) %>"
        class="progress-bar resource-usage-section-1 bg-gradient-<%= color %>"
        role="progressbar"
        aria-valuenow="<%= Float.ceil(value, 1) %>"
        aria-valuemin="0"
        aria-valuemax="100"
        style="width: <%= value %>%">
        </div>
      <% end %>
      <%= @inner_content.([]) %>
    </div>
    """
  end
end

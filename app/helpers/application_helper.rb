module ApplicationHelper
  def h_time(time)
    time.strftime('%Y年%-m月%-d日 %-H点%-M分 ')
  end

end

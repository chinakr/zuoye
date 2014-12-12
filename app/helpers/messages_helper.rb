# Helper methods defined here can be accessed in any controller or view in the application

module Zuoye
  class App
    module MessagesHelper
      def weekday(date)
        wday_cn = ['一', '二', '三', '四', '五', '六', '日']
        '星期' + wday_cn[date.wday-1]
      end
    end

    helpers MessagesHelper
  end
end

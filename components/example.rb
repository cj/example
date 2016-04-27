class App
  module Components
    class Example
      include Opal::Connect

      def display
        html! do
          html do
            head do
              meta charset: 'utf-8'
            end

            body do
              div 'Example'
            end
          end
        end
      end
    end
  end
end

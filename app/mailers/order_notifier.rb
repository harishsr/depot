class OrderNotifier < ActionMailer::Base
  default from: "Harish R <harishsr.coder@gmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email,
         subject: "Received, your order has.  Ship soon, it shall."
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email,
         subject: "Shipped, your order has.  Receive soon, you shall."
  end
end
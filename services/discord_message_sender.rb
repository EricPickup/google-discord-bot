class DiscordMessageSender
  DEFAULT_COLOR = "005696"

  def self.send_embedded(
    channel,
    title: nil,
    description: nil,
    author: nil,
    color: DEFAULT_COLOR,
    fields: nil,
    footer: nil,
    image: nil,
    thumbnail: nil,
    timestamp: nil,
    url: nil
  )
    channel.send_embed do |embed|
      embed.title = title
      embed.description = description
      embed.author = author
      embed.color = color
      fields.each { |field| embed.fields << field } unless fields.nil?
      embed.footer = footer
      embed.image = image
      embed.thumbnail = thumbnail
      embed.timestamp = timestamp
      embed.url = url
    end
  end
end

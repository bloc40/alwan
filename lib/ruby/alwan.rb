require 'ruby/alwan/version'

class String
  COLORS = {
    nocolor:       "\e[0m",
    black:         "\e[0;30;40m",
    red:           "\e[0;31;40m",
    green:         "\e[0;32;40m",
    yellow:        "\e[0;33;40m",
    purple:        "\e[0;34;40m",
    lavender:      "\e[0;35;40m",
    cyan:          "\e[0;36;40m",
    white:         "\e[0;37;40m",
    bold_red:      "\e[1;31;40m",
    bold_green:    "\e[1;32;40m",
    bold_yellow:   "\e[1;33;40m",
    bold_purple:   "\e[1;34;40m",
    bold_lavender: "\e[1;35;40m",
    bold_cyan:     "\e[1;36;40m",
    bold_white:    "\e[1;37;40m"
  }

  def colorize(color)
    COLORS[color].to_s + self + COLORS[:nocolor]
  end
end

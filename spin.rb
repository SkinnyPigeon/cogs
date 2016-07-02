require_relative('cogs')

@cog1 = Cog.new(5)
@cog2 = Cog.new(3)

def spin
  @cog1.teeth * @cog2.teeth
end
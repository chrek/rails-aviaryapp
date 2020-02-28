To correct any security vulnerability for example nokogiri < 1.8.1

Run:
bundle update

Or 

bundle update nokogiri

As said in the documentaion, when updating a gem its 
dependencies are updated as well:
  Sometimes, you want to update a single gem in the Gemfile(5), 
  and leave the rest of the gems that you specified locked to the versions in the Gemfile.lock.

  For instance, in the scenario above, imagine that nokogiri releases version 1.4.4, and you want to update it without updating Rails and all of its dependencies. 
  To do this, run bundle update nokogiri.

    Bundler will update nokogiri and any of its dependencies, but leave alone Rails and its dependencies.

An not only it dependencies, but the dependencies of the dependencies as well. That can end in updating a lot of gems, when we only wanted to update a a concrete ones.

A recent example: when updating font-awesome-rails from 4.0.7.2 to 4.7.0.3 using gem update font-awesome-rails, the last version of minitest (5.11.1) also gets installed . However font-awesome-rails do not have any dependency with minitest, as it is the dependency of its dependency. If this minitest version had a bug, It could break my program when I only wanted to update font-awesome-rails, which would have worked perfectly with the other version.

I would say that sometimes it would make sense to update a gem without updating its dependencies. What about introducing an option for that? thinking


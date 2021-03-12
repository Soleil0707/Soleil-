FROM jekyll/jekyll

COPY --chown=jekyll:jekyll Gemfile .
COPY --chown=jekyll:jekyll Gemfile.lock .

# RUN bundle config set --local clean 'true' && bundle install --quiet
RUN bundle install --quiet

CMD ["jekyll", "serve"]
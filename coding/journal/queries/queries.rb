
# Schema design and models are straightforward and standard for this type of relationship where Join Tables are required.

#Queries

# Find all clients for a particular provider
Provider.find(provider_id).clients

# Find all providers for a particular client:
Client.find(client_id).providers

# Find all of a particular client's journal entries, sorted by date posted (asc)
Client.find(client_id).journal_posts.order(:posted_at)

# Find all of the journal entries of all of the clients of a particular provider, sorted by date posted (asc)
Provider.find(provider_id).journal_posts.order(:posted_at)

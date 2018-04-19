//
//  RepositoryInvitationsClient.swift
//  GithubClient
//
//  Created by Eduardo Arenas on 2/18/18.
//  Copyright © 2018 GameChanger. All rights reserved.
//

import RxSwift

public final class RepositoryInvitationsClient: ApiClient {
  
  func listAll(owner: String, repo: String, limit: Int?) -> Observable<[Invitation]> {
    return getObjects(apiUrl: .invitations(owner: owner, repo: repo), limit: limit)
  }
  
  func listAllPaginated(owner: String, repo: String) -> Observable<PageResult<Invitation>> {
    return getPaginatedObjects(apiUrl: .invitations(owner: owner, repo: repo))
  }
  
  func delete(owner: String, repo: String, id: Int) -> Completable {
    return delete(apiUrl: .invitation(owner: owner, repo: repo, id: id))
  }
  
}
//
//  RepositoryUpdate.swift
//  GithubClient
//
//  Created by Eduardo Arenas on 8/11/17.
//  Copyright © 2017 GameChanger. All rights reserved.
//

public struct RepositoryUpdate: Encodable {

  public let name: String
  public let description: String?
  public let homepage: String?
  public let isPrivate: Bool?
  public let hasIssues: Bool?
  public let hasProjects: Bool?
  public let hasWiki: Bool?
  public let defaultBranch: String?
  public let allowSquashMerge: Bool?
  public let allowMergeCommit: Bool?
  public let allowRebaseMerge: Bool?

  public init(name: String,
              description: String? = nil,
              homepage: String? = nil,
              isPrivate: Bool? = nil,
              hasIssues: Bool? = nil,
              hasProjects: Bool? = nil,
              hasWiki: Bool? = nil,
              defaultBranch: String? = nil,
              allowSquashMerge: Bool? = nil,
              allowMergeCommit: Bool? = nil,
              allowRebaseMerge: Bool? = nil) {
    self.name = name
    self.description = description
    self.homepage = homepage
    self.isPrivate = isPrivate
    self.hasIssues = hasIssues
    self.hasProjects = hasProjects
    self.hasWiki = hasWiki
    self.defaultBranch = defaultBranch
    self.allowSquashMerge = allowSquashMerge
    self.allowMergeCommit = allowMergeCommit
    self.allowRebaseMerge = allowRebaseMerge
  }
}

extension RepositoryUpdate {

  enum CodingKeys: String, CodingKey {
    case name
    case description
    case homepage
    case isPrivate = "private"
    case hasIssues = "has_issues"
    case hasProjects = "has_projects"
    case hasWiki = "has_wiki"
    case defaultBranch = "default_branch"
    case allowSquashMerge = "allow_squash_merge"
    case allowMergeCommit = "allow_merge_commit"
    case allowRebaseMerge = "allow_rebase_merge"
  }
}

//
//  ClientError.swift
//  APIClient
//
//  Created by Caio Mello on April 13, 2017.
//  Copyright © 2017 Caio Mello. All rights reserved.
//

import Foundation

enum ClientError: ErrorType {
	case noConfiguration
	case invalidURL
	
	var title: String {
		return GenericErrorTitle
	}
	
	var message: String {
		return GenericErrorMessage
	}
	
	var technicalDescription: String {
		switch self {
		case .noConfiguration: return "Client not configured"
		case .invalidURL: return "Invalid URL"
		}
	}
	
	var description: String {
		return "Client error: \(technicalDescription)"
	}
}

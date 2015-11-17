package com.bitMiners.pdf.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.bitMiners.pdf.domain.Profile;
import com.bitMiners.pdf.repository.repositoryImpl.ProfileRepository;
import com.bitMiners.pdf.service.ProfileService;
@Service
@Transactional
public class ProfileServiceImpl implements ProfileService {
	@Autowired
	private ProfileRepository profileRepository;
	
	public boolean updateProfile(Profile profile) {
		return profileRepository.update(profile);
	}

	public Profile getProfile(int profileId) {
		return profileRepository.findOne(profileId);
	}

}

package ec.com.pry.demokruger.core.service;

import ec.com.pry.demokruger.client.entity.AdminEntity;
import ec.com.pry.demokruger.client.repository.IAdminRepository;
import ec.com.pry.demokruger.client.service.IAdminService;
import ec.com.pry.demokruger.vo.AdminVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

/**
 * Admin Service.
 * @author Yuli.
 */
@Transactional("jpaTransactionManager")
@Validated
@Lazy
@Service
public class AdminService implements IAdminService {

/**
    //@Autowired
    private IAdminRepository repository;

    */

    /**
    //@Override
    public void saveAdminCredenciales(AdminVO adminVO) {
        AdminEntity entity = new AdminEntity();
        entity.setUsser(adminVO.getUsser());
        entity.setPass(adminVO.getPass());
        repository.saveAdminCredenciales(entity);


    }
    */
}

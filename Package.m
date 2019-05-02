classdef Package
    %UNTITLED2 �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties (Constant)
        size = 20;  %���д��
    end
    
    properties 
        delay;
        priority_value;
    end
    
    methods
        function obj = Package(priority)
            if ( priority >= 0 && priority <= 150 )
            obj.priority_value = priority;
            obj.delay = 1 / priority;  %���д��
            else
                error('Package can not be created with given priority.');
            end
        end
        
        function processing_delay = get.delay(obj)
            processing_delay = obj.delay;
        end
        
        function priority = get.priority_value(obj)
            priority = obj.priority_value;
        end
    end
    
end


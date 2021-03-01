from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Float

Cath_Assign_Domains_V0_1_0 = CommandToolBuilder(tool="cath_assign_domains", base_command=["cath-assign-domains"], inputs=[ToolInput(tag="in_output_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --version ]                                                  Output version information")), ToolInput(tag="in_svm_light_rbf_file", input_type=File(optional=True), prefix="--svmlight-rbf-file", doc=InputDocumentation(doc="File containing SVM-light RBF model for CATH assignment")), ToolInput(tag="in_file_list_file", input_type=File(optional=True), prefix="--filelist-file", doc=InputDocumentation(doc="File of data files (one line per query domain containing: ssap_results_file prc_results_file)")), ToolInput(tag="in_sf_of_domain_file", input_type=File(optional=True), prefix="--sf-of-domain-file", doc=InputDocumentation(doc="File containing up-to-date assignments (one line per domain containing: domain_id superfamily_id)")), ToolInput(tag="in_forbidden_node", input_type=Float(optional=True), prefix="--forbidden-node", doc=InputDocumentation(doc="(=2.105, 2.110, 2.115, 2.120, 2.130, 2.140)  List of nodes to which automatic assignment is forbidden; specify option multiple times for multiple nodes\nRECOMMENDED: do not specify this option so that the default list of propeller architectures is used."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cath_Assign_Domains_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Gqt_Query_V0_1_0 = CommandToolBuilder(tool="gqt_query", base_command=["gqt", "query"], inputs=[ToolInput(tag="in_d", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="\")), ToolInput(tag="in_print_number_resulting", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="print number of resulting variants \")), ToolInput(tag="in_genotypes_source_bcfvcf", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="genotypes (from the source bcf/vcf)\")), ToolInput(tag="in_direcory_name_remote", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="direcory name for remote files (default ./)")), ToolInput(tag="in_b", input_type=File(optional=True), prefix="-B", doc=InputDocumentation(doc="(opt.)\")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="(opt.)\")), ToolInput(tag="in_var_6", input_type=File(optional=True), prefix="-V", doc=InputDocumentation(doc="(opt.)\")), ToolInput(tag="in_var_7", input_type=File(optional=True), prefix="-G", doc=InputDocumentation(doc="(opt.)\")), ToolInput(tag="in_p", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="\")), ToolInput(tag="in_var_9", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="\")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gqt_Query_V0_1_0().translate("wdl", allow_empty_container=True)


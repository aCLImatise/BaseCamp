from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Metilene_Output_Pl_V0_1_0 = CommandToolBuilder(tool="metilene_output.pl", base_command=["metilene_output.pl"], inputs=[ToolInput(tag="in_pathprefix_output_files", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="path/prefix of output files (default: input_path/)")), ToolInput(tag="in_maximum_adj_pvalue", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="maximum (<) adj. p-value (q-value) for output of significant DMRs (default: 0.05)")), ToolInput(tag="in_minimum_cpgs_default", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="minimum (>=) cpgs (default:10)")), ToolInput(tag="in_minimum_mean_methylation", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="minimum mean methylation difference (>=) (default:0.1)")), ToolInput(tag="in_minimum_length_dmr", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="minimum length of DMR [nt] (>=) (post-processing, default: 0)")), ToolInput(tag="in_name_group_default", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="name of group A (default:'g1')")), ToolInput(tag="in_name_group_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="name of group B (default:'g2')")), ToolInput(tag="in_q", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_number", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metilene_Output_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


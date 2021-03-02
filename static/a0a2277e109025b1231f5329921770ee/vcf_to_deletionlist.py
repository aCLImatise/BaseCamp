from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Vcf_To_Deletionlist_V0_1_0 = CommandToolBuilder(tool="vcf_to_deletionlist", base_command=["vcf-to-deletionlist"], inputs=[ToolInput(tag="in_maximal_length_considered", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Maximal length to be considered.")), ToolInput(tag="in_include_deletions_marked", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Include deletions marked as IMPRECISE.")), ToolInput(tag="in_print_list_genotypes", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Print list of genotypes as comma-separated list in last\ncolumn.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_To_Deletionlist_V0_1_0().translate("wdl", allow_empty_container=True)


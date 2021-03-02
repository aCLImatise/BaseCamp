from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Quasitools_Drmutations_Mutation_Db_V0_1_0 = CommandToolBuilder(tool="quasitools_drmutations_MUTATION_DB", base_command=["quasitools", "drmutations", "MUTATION_DB"], inputs=[ToolInput(tag="in_quasi_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dr_mutations", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_variants", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_four_file", input_type=Int(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quasitools_Drmutations_Mutation_Db_V0_1_0().translate("wdl", allow_empty_container=True)


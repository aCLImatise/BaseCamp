from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ebi_Metagenomics_Print_Possible_Run_Data_V0_1_0 = CommandToolBuilder(tool="ebi_metagenomics_print_possible_run_data", base_command=["ebi_metagenomics", "print_possible_run_data"], inputs=[ToolInput(tag="in_run", input_type=String(optional=True), prefix="--run", doc=InputDocumentation(doc="Id of a run in EBI metagenomics"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ebi_Metagenomics_Print_Possible_Run_Data_V0_1_0().translate("wdl", allow_empty_container=True)


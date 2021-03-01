from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ebi_Metagenomics_Download_Run_Data_V0_1_0 = CommandToolBuilder(tool="ebi_metagenomics_download_run_data", base_command=["ebi_metagenomics", "download_run_data"], inputs=[ToolInput(tag="in_run", input_type=String(optional=True), prefix="--run", doc=InputDocumentation(doc="Id of a run in EBI metagenomics")), ToolInput(tag="in_data", input_type=String(optional=True), prefix="--data", doc=InputDocumentation(doc="Data to download for the run (accessible with")), ToolInput(tag="in_get_possible_run_data", input_type=String(), position=0, doc=InputDocumentation(doc="--file PATH  File to export downloaded data"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ebi_Metagenomics_Download_Run_Data_V0_1_0().translate("wdl", allow_empty_container=True)


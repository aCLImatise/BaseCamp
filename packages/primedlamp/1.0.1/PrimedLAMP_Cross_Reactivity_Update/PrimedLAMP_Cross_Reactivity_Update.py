from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Primedlamp_Cross_Reactivity_Update_V0_1_0 = CommandToolBuilder(tool="PrimedLAMP_Cross_Reactivity_Update", base_command=["PrimedLAMP_Cross_Reactivity_Update"], inputs=[ToolInput(tag="in_run_id", input_type=String(optional=True), prefix="--RunID", doc=InputDocumentation(doc="Desired Run ID")), ToolInput(tag="in_prior_oligo_sites", input_type=File(optional=True), prefix="--PriorOligoSites", doc=InputDocumentation(doc="Path to Prior Generated Oligo Sites")), ToolInput(tag="in_prior_blastn_output", input_type=File(optional=True), prefix="--PriorBlastnOutput", doc=InputDocumentation(doc="Path to Blastn_Output directory")), ToolInput(tag="in_path_file_ids", input_type=File(optional=True), prefix="--ExlusionIDFilePath", doc=InputDocumentation(doc="Path to .txt file contain sequence IDs to excluded")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--Threads", doc=InputDocumentation(doc="Default Set To 1")), ToolInput(tag="in_var_5", input_type=String(), position=0, doc=InputDocumentation(doc="[--Threads THREADS]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primedlamp_Cross_Reactivity_Update_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Primedlamp_Amplicon_Success_V0_1_0 = CommandToolBuilder(tool="PrimedLAMP_Amplicon_Success", base_command=["PrimedLAMP_Amplicon_Success"], inputs=[ToolInput(tag="in_input_fast_a", input_type=String(optional=True), prefix="--InputFasta", doc=InputDocumentation(doc="[--Threads THREADS]")), ToolInput(tag="in_run_id", input_type=String(optional=True), prefix="--RunID", doc=InputDocumentation(doc="Desired Run ID")), ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--InputFile", doc=InputDocumentation(doc="Path <RunID>_Oligo_Analysis.csv")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--Threads", doc=InputDocumentation(doc="Default Set To 1")), ToolInput(tag="in_noncritical_threshold", input_type=Int(optional=True), prefix="--NonCriticalThreshold", doc=InputDocumentation(doc="Number of mismatches tolerated in non-critical region")), ToolInput(tag="in_critical_region_len", input_type=Int(optional=True), prefix="--CriticalRegionLen", doc=InputDocumentation(doc="Number of nucleotides in from either the 5' or 3'\nterminus\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primedlamp_Amplicon_Success_V0_1_0().translate("wdl", allow_empty_container=True)


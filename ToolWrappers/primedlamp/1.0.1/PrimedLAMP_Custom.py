from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Primedlamp_Custom_V0_1_0 = CommandToolBuilder(tool="PrimedLAMP_Custom", base_command=["PrimedLAMP_Custom"], inputs=[ToolInput(tag="in_run_id", input_type=String(optional=True), prefix="--RunID", doc=InputDocumentation(doc="Desired Run ID")), ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--InputFile", doc=InputDocumentation(doc="Path to Custom Sets Input File (CSV)")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--InputFasta", doc=InputDocumentation(doc="Path to target sequence in fasta format")), ToolInput(tag="in_prior_align", input_type=File(optional=True), prefix="--PriorAlign", doc=InputDocumentation(doc="Path to Alignment Summary CSV File")), ToolInput(tag="in_background_check", input_type=File(optional=True), prefix="--BackgroundCheck", doc=InputDocumentation(doc="Path to cross-reactivity fasta file. If no cross\nreactivity check is required please set as: NO")), ToolInput(tag="in_blast_db_path", input_type=File(optional=True), prefix="--BlastDBPath", doc=InputDocumentation(doc="Path to BlastnDB for cross reactivity check.")), ToolInput(tag="in_background_search_sensitivity", input_type=String(optional=True), prefix="--BackgroundSearchSensitivity", doc=InputDocumentation(doc="Options [Basic or Advanced or Fast]")), ToolInput(tag="in_evalue_thresh", input_type=String(optional=True), prefix="--EvalueThresh", doc=InputDocumentation(doc="Cross Reactivity search sensntivity.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--Threads", doc=InputDocumentation(doc="Default set to 1")), ToolInput(tag="in_t_spacer_len", input_type=Int(optional=True), prefix="--TspacerLen", doc=InputDocumentation(doc="Length of T Spacer in FIP and BIP if required")), ToolInput(tag="in_inclusivity_check", input_type=String(optional=True), prefix="--InclusivityCheck", doc=InputDocumentation(doc="Inclusivity and binding site assessment\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primedlamp_Custom_V0_1_0().translate("wdl", allow_empty_container=True)


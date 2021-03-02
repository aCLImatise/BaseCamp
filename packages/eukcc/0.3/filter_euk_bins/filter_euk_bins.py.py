from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Filter_Euk_Bins_Py_V0_1_0 = CommandToolBuilder(tool="filter_euk_bins.py", base_command=["filter_euk_bins.py"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="path for the output table")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="How many bins should be run in parallel (Default: 1)")), ToolInput(tag="in_min_l", input_type=Int(optional=True), prefix="--minl", doc=InputDocumentation(doc="define minimal length of contig for EukRep to classify\n(default: 1500)")), ToolInput(tag="in_e_uk_ratio", input_type=Int(optional=True), prefix="--eukratio", doc=InputDocumentation(doc="This ratio of eukaryotic DNA to all DNA has to be\nfound at least (default: 0, ignore)")), ToolInput(tag="in_bac_ratio", input_type=Int(optional=True), prefix="--bacratio", doc=InputDocumentation(doc="discard bins with bacterial ratio of higher than\n(default: 1, ignore)")), ToolInput(tag="in_min_bp", input_type=Int(optional=True), prefix="--minbp", doc=InputDocumentation(doc="Only keep bins with at least n bp of dna (default:\n8000000)")), ToolInput(tag="in_min_bpe_uks", input_type=Int(optional=True), prefix="--minbpeuks", doc=InputDocumentation(doc="Only keep bins with at least n bp of Eukaryotic dna\n(default: 5000000)")), ToolInput(tag="in_rerun", input_type=Boolean(optional=True), prefix="--rerun", doc=InputDocumentation(doc="rerun even if output exists")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="supress information")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Make it more verbose")), ToolInput(tag="in_bins", input_type=String(), position=0, doc=InputDocumentation(doc="all bins to classify"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="path for the output table"))], container="quay.io/biocontainers/eukcc:0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Euk_Bins_Py_V0_1_0().translate("wdl")


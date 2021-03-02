from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Float, String

Identifyhmm_V0_1_0 = CommandToolBuilder(tool="identifyHMM", base_command=["identifyHMM"], inputs=[ToolInput(tag="in_marker_db", input_type=File(optional=True), prefix="--markerdb", doc=InputDocumentation(doc="Provide HMM file of markers. Markers should have a\ndescriptive ID name.")), ToolInput(tag="in_perform_prodigal", input_type=Boolean(optional=True), prefix="--performProdigal", doc=InputDocumentation(doc="Run Prodigal on input genome nucleotide FASTA file")), ToolInput(tag="in_cut_tc", input_type=Boolean(optional=True), prefix="--cut_tc", doc=InputDocumentation(doc="use hmm profiles TC trusted cutoffs to set all")), ToolInput(tag="in_set_evalue_used", input_type=Float(optional=True), prefix="-E", doc=InputDocumentation(doc="Set E-Value to be used in hmmsearch. Default: 1E-5")), ToolInput(tag="in_thresholding", input_type=String(), position=0, doc=InputDocumentation(doc="--outPrefix OUTPREFIX"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Identifyhmm_V0_1_0().translate("wdl", allow_empty_container=True)


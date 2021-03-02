from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Float

Rnaz_V0_1_0 = CommandToolBuilder(tool="RNAz", base_command=["RNAz"], inputs=[ToolInput(tag="in_forward", input_type=Boolean(optional=True), prefix="--forward", doc=InputDocumentation(doc="Score forward strand")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Score reverse strand")), ToolInput(tag="in_both_strands", input_type=Boolean(optional=True), prefix="--both-strands", doc=InputDocumentation(doc="Score both strands")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output filename")), ToolInput(tag="in_cut_off", input_type=Float(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="Probability cutoff")), ToolInput(tag="in_dinucleotide", input_type=Boolean(optional=True), prefix="--dinucleotide", doc=InputDocumentation(doc="Use dinucleotide shuffled z-scores (default)")), ToolInput(tag="in_mononucleotide", input_type=Boolean(optional=True), prefix="--mononucleotide", doc=InputDocumentation(doc="Use mononucleotide shuffled z-scores")), ToolInput(tag="in_lo_car_nate", input_type=Boolean(optional=True), prefix="--locarnate", doc=InputDocumentation(doc="Use decision model for structural alignments (default=off)")), ToolInput(tag="in_no_shuffle", input_type=Boolean(optional=True), prefix="--no-shuffle", doc=InputDocumentation(doc="Never fall back to shuffling (default=off)"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output filename"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnaz_V0_1_0().translate("wdl", allow_empty_container=True)


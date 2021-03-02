from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Tqs_Py_V0_1_0 = CommandToolBuilder(tool="TQS.py", base_command=["TQS.py"], inputs=[ToolInput(tag="in_sequence", input_type=File(optional=True), prefix="--sequence", doc=InputDocumentation(doc="=SEQFILE\nIllumina sequence file - Output format from the 1G\nGenome Analyzer (_seq.txt):\n7       1       255     669\nAACCCCCACTCCTACAACGCCATCATTCCCCTCGAC")), ToolInput(tag="in_qual", input_type=File(optional=True), prefix="--qual", doc=InputDocumentation(doc="=QUALFILE\nA prb file containing all the Illumina intensities, as\noutputted by the 1G Genome Analyzer (_prb.txt)")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Length of sequence reads (i.e. Number of sequencing\ncycles, default=36)")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Base intensity threshold value (-40 to 40, default=5)")), ToolInput(tag="in_difference", input_type=Int(optional=True), prefix="--difference", doc=InputDocumentation(doc="Base intensity difference between top intensity and\nsecond best (1 to 80, default=5)")), ToolInput(tag="in_consec", input_type=Int(optional=True), prefix="--consec", doc=InputDocumentation(doc="Minimum number of consecutive bases passing threshold\nvalues (default=20)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Runs in Verbose mode."))], outputs=[ToolOutput(tag="out_sequence", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sequence", type_hint=File()), doc=OutputDocumentation(doc="=SEQFILE\nIllumina sequence file - Output format from the 1G\nGenome Analyzer (_seq.txt):\n7       1       255     669\nAACCCCCACTCCTACAACGCCATCATTCCCCTCGAC"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tqs_Py_V0_1_0().translate("wdl", allow_empty_container=True)


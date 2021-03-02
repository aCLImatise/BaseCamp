from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Transformseq_V0_1_0 = CommandToolBuilder(tool="transformseq", base_command=["transformseq"], inputs=[ToolInput(tag="in_fin", input_type=File(optional=True), prefix="--fin", doc=InputDocumentation(doc="Sequence input file (default: stdin)")), ToolInput(tag="in_format_in", input_type=String(optional=True), prefix="--format-in", doc=InputDocumentation(doc="Multiple sequence alignment format: (clustal,\nfasta, plain, msf, genbank, nbrf, nexus, phylip,\nstockholm, intelligenetics, table, array)")), ToolInput(tag="in_f_out", input_type=File(optional=True), prefix="--fout", doc=InputDocumentation(doc="Output file (default: stdout)")), ToolInput(tag="in_format_out", input_type=String(optional=True), prefix="--format-out", doc=InputDocumentation(doc="Multiple sequence alignment output format:\n(clustal, fasta, plain, intelligenetics, table,\narray) (Default: fasta)")), ToolInput(tag="in_seg", input_type=Boolean(optional=True), prefix="--seg", doc=InputDocumentation(doc="Mask low complexity regions in protein sequences.")), ToolInput(tag="in_subsample", input_type=String(optional=True), prefix="--subsample", doc=InputDocumentation(doc="Return a random subsample of the sequences.")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="reverse sequences")), ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="--complement", doc=InputDocumentation(doc="complement DNA sequences")), ToolInput(tag="in_sequence_data_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_logo_dot_eps", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_f_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_f_out", type_hint=File()), doc=OutputDocumentation(doc="Output file (default: stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transformseq_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Dlessp_V0_1_0 = CommandToolBuilder(tool="dlessP", base_command=["dlessP"], inputs=[ToolInput(tag="in_msa_format", input_type=File(optional=True), prefix="--msa-format", doc=InputDocumentation(doc="|PHYLIP|MPM|MAF|SS\nAlignment format (default is to guess format from file contents).\nNote that the program msa_view can be used for conversion.")), ToolInput(tag="in_refseq", input_type=File(optional=True), prefix="--refseq", doc=InputDocumentation(doc="(for use with --msa-format MAF) Read the complete text of the\nreference sequence from <fname> (FASTA format) and combine it\nwith the contents of the MAF file to produce a complete,\nordered representation of the alignment.  The reference\nsequence of the MAF file is assumed to be the one that appears\nfirst in each block.")), ToolInput(tag="in_ref_idx", input_type=Int(optional=True), prefix="--refidx", doc=InputDocumentation(doc="Use coordinate frame of specified sequence in output.  Default\nvalue is 1, first sequence in alignment; 0 indicates\ncoordinate frame of entire multiple alignment.")), ToolInput(tag="in_timing", input_type=File(optional=True), prefix="--timing", doc=InputDocumentation(doc="Write timing data to <file>.")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="Create a directory and write one HTML file into it per DLESS\nprediction, giving the stats for that prediction.")), ToolInput(tag="in_alignment", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_dot_mod", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_predictions_dot_gff", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dlessp_V0_1_0().translate("wdl", allow_empty_container=True)


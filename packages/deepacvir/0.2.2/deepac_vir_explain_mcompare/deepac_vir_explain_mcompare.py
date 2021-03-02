from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int, Directory

Deepac_Vir_Explain_Mcompare_V0_1_0 = CommandToolBuilder(tool="deepac_vir_explain_mcompare", base_command=["deepac-vir", "explain", "mcompare"], inputs=[ToolInput(tag="in_in_file_one", input_type=File(optional=True), prefix="--in-file1", doc=InputDocumentation(doc="File containing all filter motifs in transfac format")), ToolInput(tag="in_in_file_two", input_type=File(optional=True), prefix="--in-file2", doc=InputDocumentation(doc="File containing all filter motifs in transfac format")), ToolInput(tag="in_train_data", input_type=String(optional=True), prefix="--train-data", doc=InputDocumentation(doc="Training data (.npy), necessary to calculate\nbackground GC content")), ToolInput(tag="in_extensively", input_type=Boolean(optional=True), prefix="--extensively", doc=InputDocumentation(doc="Compare every motif from --in_file1 with every motif\nfrom --in_file2; default: compare only motifs with the\nsame ID")), ToolInput(tag="in_rc", input_type=Boolean(optional=True), prefix="--rc", doc=InputDocumentation(doc="Consider RC-complement of a motif")), ToolInput(tag="in_shift", input_type=Boolean(optional=True), prefix="--shift", doc=InputDocumentation(doc="Shift motifs to find best alignment")), ToolInput(tag="in_min_overlap", input_type=Int(optional=True), prefix="--min-overlap", doc=InputDocumentation(doc="Minimal overlap between two motifs if motifs are\nshifted to find the best alignment (--shift)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory\n")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_explain", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_m_compare", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory\n"))], container="quay.io/biocontainers/deepacvir:0.2.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Explain_Mcompare_V0_1_0().translate("wdl")


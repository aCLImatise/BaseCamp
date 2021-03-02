from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean, Int, String

Spectral_Layout_From_Minimap_Py_V0_1_0 = CommandToolBuilder(tool="spectral_layout_from_minimap.py", base_command=["spectral_layout_from_minimap.py"], inputs=[ToolInput(tag="in_root", input_type=Directory(optional=True), prefix="--root", doc=InputDocumentation(doc="directory where to store layout files.")), ToolInput(tag="in_fast_afn", input_type=File(optional=True), prefix="--fastafn", doc=InputDocumentation(doc="reads file path (fasta format))")), ToolInput(tag="in_minimap_fn", input_type=File(optional=True), prefix="--minimapfn", doc=InputDocumentation(doc="overlap file path (from minimap in PAF format).")), ToolInput(tag="in_write_poa_files", input_type=Boolean(optional=True), prefix="--write_poa_files", doc=InputDocumentation(doc="Whether to write POA input files for consensus\ngeneration or not.")), ToolInput(tag="in_w_len", input_type=Int(optional=True), prefix="--w_len", doc=InputDocumentation(doc="length of consensus windows for POA.")), ToolInput(tag="in_w_ovl_len", input_type=Int(optional=True), prefix="--w_ovl_len", doc=InputDocumentation(doc="overlap length between two successive consensus\nwindows.")), ToolInput(tag="in_sim_thr", input_type=String(optional=True), prefix="--sim_thr", doc=InputDocumentation(doc="threshold on overlap score (similarity matrix\npreprocessing.)")), ToolInput(tag="in_len_thr", input_type=Int(optional=True), prefix="--len_thr", doc=InputDocumentation(doc="threshold on length of overlaps (similarity matrix\npreprocessing).")), ToolInput(tag="in_verbosity", input_type=Boolean(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="verbosity level (-v, -vv or none)")), ToolInput(tag="in_ref_pos_csv_f", input_type=File(optional=True), prefix="--ref_pos_csvf", doc=InputDocumentation(doc="csv file with position of reads (in same order as in\nfastafn) obtained from BWA, in order to plot reads\nposition found vs reference.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spectral_Layout_From_Minimap_Py_V0_1_0().translate("wdl", allow_empty_container=True)


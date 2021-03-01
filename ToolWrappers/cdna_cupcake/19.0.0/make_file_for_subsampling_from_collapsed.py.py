from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Make_File_For_Subsampling_From_Collapsed_Py_V0_1_0 = CommandToolBuilder(tool="make_file_for_subsampling_from_collapsed.py", base_command=["make_file_for_subsampling_from_collapsed.py"], inputs=[ToolInput(tag="in_input_prefix", input_type=Int(optional=True), prefix="--input_prefix", doc=InputDocumentation(doc="Collapsed prefix (default: hq_isoforms.fastq.no5merge.\ncollapsed.min_fl_2.filtered)")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="Output prefix (default: output.for_subsampling")), ToolInput(tag="in_match_an_not_parsed", input_type=String(optional=True), prefix="--matchAnnot_parsed", doc=InputDocumentation(doc="MatchAnnot parsed output (default: None)")), ToolInput(tag="in_sq_anti_class", input_type=File(optional=True), prefix="--sqanti_class", doc=InputDocumentation(doc="SQANTI classification file (default: None)")), ToolInput(tag="in_demux", input_type=File(optional=True), prefix="--demux", doc=InputDocumentation(doc="Demuxed FL count file - if provided, will be used\ninstead of the <input_prefix>.abundance.txt file")), ToolInput(tag="in_include_single_exons", input_type=Boolean(optional=True), prefix="--include_single_exons", doc=InputDocumentation(doc="Include single exons (default: OFF)\n")), ToolInput(tag="in_make", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_subsample_ready", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_iso_seq", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_collapsed", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_File_For_Subsampling_From_Collapsed_Py_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Float

Mace_Py_V0_1_0 = CommandToolBuilder(tool="mace.py", base_command=["mace.py"], inputs=[ToolInput(tag="in_forward", input_type=File(optional=True), prefix="--forward", doc=InputDocumentation(doc="BigWig format file containing coverage calcualted from\nreads mapped to *forward* strand.")), ToolInput(tag="in_reverse", input_type=File(optional=True), prefix="--reverse", doc=InputDocumentation(doc="BigWig format file containing coverage calcualted from\nreads mapped to *reverse* strand.")), ToolInput(tag="in_chrom_size", input_type=Int(optional=True), prefix="--chromSize", doc=InputDocumentation(doc="Chromosome size file. Tab or space separated text file\nwith 2 columns: first column contains chromosome name,\nsecond column contains chromosome size. Example:chr1\n249250621 <NewLine> chr2        243199373 <NewLine>\nchr3        198022430 <NewLine> ...")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files. NOTE: if 'prefix.border.bed'\nexists and was non-empty, peak calling step will be\nskipped! So if you want to rerun mace.py from scratch,\nuse different 'prefix' or delete old\n'prefix.border.bed' before starting.")), ToolInput(tag="in_p_value", input_type=Float(optional=True), prefix="--pvalue", doc=InputDocumentation(doc="Pvalue cutoff for border detection and subsequent\nborder pairing. default=0.05")), ToolInput(tag="in_max_dist", input_type=Int(optional=True), prefix="--max-dist", doc=InputDocumentation(doc="Maximum distance allowed for border pairing.\ndefault=100")), ToolInput(tag="in_fz_window", input_type=Int(optional=True), prefix="--fz-window", doc=InputDocumentation(doc="Peaks located closely within this window will be\nmerged. default=5 (bp)")), ToolInput(tag="in_bg_window", input_type=Int(optional=True), prefix="--bg-window", doc=InputDocumentation(doc="Background window size used to determine background\nsignal level. default=100 (bp)")), ToolInput(tag="in_fold", input_type=Int(optional=True), prefix="--fold", doc=InputDocumentation(doc="Minmum coverage signal used to build model (i.e.\nestimate optimal peak pair size). default=2.0\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mace_Py_V0_1_0().translate("wdl", allow_empty_container=True)


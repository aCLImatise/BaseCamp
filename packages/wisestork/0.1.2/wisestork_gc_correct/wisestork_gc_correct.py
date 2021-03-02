from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Float

Wisestork_Gc_Correct_V0_1_0 = CommandToolBuilder(tool="wisestork_gc_correct", base_command=["wisestork", "gc-correct"], inputs=[ToolInput(tag="in_binsize", input_type=Int(optional=True), prefix="--binsize", doc=InputDocumentation(doc="RANGE  Bin size to use. Default = 50000")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Path to reference fasta  [required]")), ToolInput(tag="in_bin_file", input_type=File(optional=True), prefix="--bin-file", doc=InputDocumentation(doc="Optional path to region BED file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output BED file  [required]")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Path to input BED file  [required]")), ToolInput(tag="in_frac_n", input_type=Float(optional=True), prefix="--frac-n", doc=InputDocumentation(doc="Maximum fraction of N-bases per bin. Default =")), ToolInput(tag="in_frac_lowess", input_type=Float(optional=True), prefix="--frac-lowess", doc=InputDocumentation(doc="Fraction of data to use for LOWESS function.\nDefault = 0.1")), ToolInput(tag="in_zero_dot_one", input_type=Float(), position=0, doc=InputDocumentation(doc="-r, --frac-r FLOAT           Minimum fraction of reads per bin. Default =")), ToolInput(tag="in_zero_dot_zero_zero_zero_one", input_type=Float(), position=1, doc=InputDocumentation(doc="-t, --iter INTEGER           Number of iterations for LOWESS function."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output BED file  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wisestork_Gc_Correct_V0_1_0().translate("wdl", allow_empty_container=True)


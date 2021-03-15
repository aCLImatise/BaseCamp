from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, Float

Instrain_Quick_Profile_V0_1_0 = CommandToolBuilder(tool="inStrain_quick_profile", base_command=["inStrain", "quick_profile"], inputs=[ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Number of processes to use (default: 6)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Make extra debugging output (default: False)")), ToolInput(tag="in_scaffold_bin_be", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[STB [STB ...]], --stb [STB [STB ...]]\nScaffold to bin. This can be a file with each line\nlisting a scaffold and a bin name, tab-seperated. This\ncan also be a space-seperated list of .fasta files,\nwith one genome per .fasta file. If nothing is\nprovided, all scaffolds will be treated as belonging\nto the same genome (default: [])")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output prefix (default: QuickProfile)")), ToolInput(tag="in_breadth_cut_off", input_type=Float(optional=True), prefix="--breadth_cutoff", doc=InputDocumentation(doc="Minimum genome breadth to pull scaffolds (default:\n0.5)")), ToolInput(tag="in_stringent_breadth_cut_off", input_type=Float(optional=True), prefix="--stringent_breadth_cutoff", doc=InputDocumentation(doc="Minimum breadth to let scaffold into coverm raw\nresults (done with greater than; NOT greater than or\nequal to) (default: 0.0)\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Sorted .bam file")), ToolInput(tag="in_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="Fasta file the bam is mapped to"))], outputs=[], container="quay.io/biocontainers/instrain:1.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Instrain_Quick_Profile_V0_1_0().translate("wdl")


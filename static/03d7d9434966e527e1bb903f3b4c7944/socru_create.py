from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Socru_Create_V0_1_0 = CommandToolBuilder(tool="socru_create", base_command=["socru_create"], inputs=[ToolInput(tag="in_max_bases_from_ends", input_type=Int(optional=True), prefix="--max_bases_from_ends", doc=InputDocumentation(doc="Only look at this number of bases from start and end\nof fragment (default: None)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="No. of threads to use (default: 1)")), ToolInput(tag="in_fragment_order", input_type=Int(optional=True), prefix="--fragment_order", doc=InputDocumentation(doc="Order of fragments, you may need to change this,\nexample 1-2-3-4-5-6-7 (default: None)")), ToolInput(tag="in_dna_a_fast_a", input_type=File(optional=True), prefix="--dnaa_fasta", doc=InputDocumentation(doc="Location of dnaA FASTA file, defaults to bundled\n(default: None)")), ToolInput(tag="in_dif_fast_a", input_type=File(optional=True), prefix="--dif_fasta", doc=InputDocumentation(doc="Location of dif FASTA file, defaults to bundled\n(default: None)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on debugging (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verbose output (default: False)")), ToolInput(tag="in_output_directory", input_type=String(), position=0, doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_input_file", input_type=String(), position=1, doc=InputDocumentation(doc="Input FASTA file (optionally gzipped)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Socru_Create_V0_1_0().translate("wdl", allow_empty_container=True)


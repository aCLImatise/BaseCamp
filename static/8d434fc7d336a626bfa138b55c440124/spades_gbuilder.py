from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory, Boolean

Spades_Gbuilder_V0_1_0 = CommandToolBuilder(tool="spades_gbuilder", base_command=["spades-gbuilder"], inputs=[ToolInput(tag="in_kmer_length_use", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length to use")), ToolInput(tag="in__threads_use", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="# of threads to use")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="-tmp-dir", doc=InputDocumentation(doc="scratch directory to use")), ToolInput(tag="in_sorting_buffer_size", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="sorting buffer size, per thread")), ToolInput(tag="in_unit_igs", input_type=Boolean(optional=True), prefix="--unitigs", doc=InputDocumentation(doc="produce unitigs (default)")), ToolInput(tag="in_fast_g", input_type=Boolean(optional=True), prefix="--fastg", doc=InputDocumentation(doc="produce graph in FASTG format")), ToolInput(tag="in_gfa", input_type=Boolean(optional=True), prefix="--gfa", doc=InputDocumentation(doc="produce graph in GFA1 format")), ToolInput(tag="in_spades", input_type=Boolean(optional=True), prefix="--spades", doc=InputDocumentation(doc="produce graph in SPAdes internal format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Gbuilder_V0_1_0().translate("wdl", allow_empty_container=True)


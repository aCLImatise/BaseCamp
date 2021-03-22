from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Scram_Merge_V0_1_0 = CommandToolBuilder(tool="scram_merge", base_command=["scram_merge"], inputs=[ToolInput(tag="in_set_input_format", input_type=String(optional=True), prefix="-I", doc=InputDocumentation(doc="Set input format:  'bam', 'sam' or 'cram'.")), ToolInput(tag="in_set_output_format", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="Set output format: 'bam', 'sam' or 'cram'.")), ToolInput(tag="in_set_zlib_compression", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="Set zlib compression level.")), ToolInput(tag="in_no_zlib_compression", input_type=Int(optional=True), prefix="-0", doc=InputDocumentation(doc="No zlib compression.")), ToolInput(tag="in_specifies_refseqstartend_range", input_type=String(optional=True), prefix="-R", doc=InputDocumentation(doc="[Cram] Specifies the refseq:start-end range")), ToolInput(tag="in_specifies_reference_file", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="[Cram] Specifies the reference file.")), ToolInput(tag="in_sequences_slice_default", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="[Cram] Sequences per slice, default 10000.")), ToolInput(tag="in_slices_container_default", input_type=Int(optional=True), prefix="-S", doc=InputDocumentation(doc="[Cram] Slices per container, default 1.")), ToolInput(tag="in_specify_format_version", input_type=File(optional=True), prefix="-V", doc=InputDocumentation(doc="[Cram] Specify the file format version to write (eg 1.1, 2.0)")), ToolInput(tag="in_embed_reference_sequence", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="[Cram] Embed reference sequence.")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scram_Merge_V0_1_0().translate("wdl")


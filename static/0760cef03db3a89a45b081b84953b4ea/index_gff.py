from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Index_Gff_V0_1_0 = CommandToolBuilder(tool="index_gff", base_command=["index_gff"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Index the given GFF. Takes as arguments as GFF filename\nand an output directory.")), ToolInput(tag="in_compress_id", input_type=Boolean(optional=True), prefix="--compress-id", doc=InputDocumentation(doc="Use the compressed version of the GFF 'ID=' field rather\nthan the ID itself when creating .miso output filenames.\n"))], outputs=[ToolOutput(tag="out_index", output_type=File(optional=True), selector=InputSelector(input_to_select="in_index", type_hint=File()), doc=OutputDocumentation(doc="Index the given GFF. Takes as arguments as GFF filename\nand an output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Index_Gff_V0_1_0().translate("wdl", allow_empty_container=True)


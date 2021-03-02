from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Unitem_Compare_V0_1_0 = CommandToolBuilder(tool="unitem_compare", base_command=["unitem", "compare"], inputs=[ToolInput(tag="in_extension_one", input_type=Int(optional=True), prefix="--extension1", doc=InputDocumentation(doc="extension of bins in directory 1 (default: fna)")), ToolInput(tag="in_extension_two", input_type=Int(optional=True), prefix="--extension2", doc=InputDocumentation(doc="extension of bins in directory 2 (default: fna)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output of logger")), ToolInput(tag="in_assembly_file", input_type=String(), position=0, doc=InputDocumentation(doc="assembled contigs used to generate bins")), ToolInput(tag="in_bin_dir_one", input_type=Int(), position=1, doc=InputDocumentation(doc="directory containing bins from first method")), ToolInput(tag="in_bin_dir_two", input_type=Int(), position=2, doc=InputDocumentation(doc="directory containing bins from second method")), ToolInput(tag="in_output_file", input_type=String(), position=3, doc=InputDocumentation(doc="output file showing overlap between bins"))], outputs=[], container="quay.io/biocontainers/unitem:0.0.18--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unitem_Compare_V0_1_0().translate("wdl")


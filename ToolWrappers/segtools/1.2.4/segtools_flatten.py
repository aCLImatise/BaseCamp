from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Segtools_Flatten_V0_1_0 = CommandToolBuilder(tool="segtools_flatten", base_command=["segtools-flatten"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not print diagnostic messages.")), ToolInput(tag="in_mnemonic_file", input_type=File(optional=True), prefix="--mnemonic-file", doc=InputDocumentation(doc="Save mapping information to FILE instead of\nflat.mnemonics (default). This file complies with the\nmnemonic file format.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Save flattened bed file to FILE instead of printing to\nstdout (default)")), ToolInput(tag="in_filter", input_type=Int(optional=True), prefix="--filter", doc=InputDocumentation(doc="Don't output new segment labels (and corresponding\nsegments) that span less than F*N bases, where N is\nthe number of bases covered by the new segmentation.\nThis can be used to remove extremely uncommon labels\n(e.g. F = 0.01) that are the more likely to be\nspurious. Filtering is off by default.\n")), ToolInput(tag="in_segmentation_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segtools_Flatten_V0_1_0().translate("wdl", allow_empty_container=True)


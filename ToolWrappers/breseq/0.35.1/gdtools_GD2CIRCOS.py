from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int

Gdtools_Gd2Circos_V0_1_0 = CommandToolBuilder(tool="gdtools_GD2CIRCOS", base_command=["gdtools", "GD2CIRCOS"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="name of directory to save Circos configuration files and scripts (DEFAULT=circos_output)")), ToolInput(tag="in_distance", input_type=Int(optional=True), prefix="--distance", doc=InputDocumentation(doc="the distance from the center the first axis will be in proportion to the default size (DEFAULT=1.0)")), ToolInput(tag="in_feature", input_type=Int(optional=True), prefix="--feature", doc=InputDocumentation(doc="the scale of the features in proportion to the default size (DEFAULT=1.0)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Gd2Circos_V0_1_0().translate("wdl", allow_empty_container=True)


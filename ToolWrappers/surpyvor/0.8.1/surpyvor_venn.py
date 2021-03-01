from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Surpyvor_Venn_V0_1_0 = CommandToolBuilder(tool="surpyvor_venn", base_command=["surpyvor", "venn"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information while running.")), ToolInput(tag="in_vcfs_containing_variants", input_type=Boolean(optional=True), prefix="--variants", doc=InputDocumentation(doc="[VARIANTS [VARIANTS ...]]\nvcfs containing structural variants")), ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="--names", doc=InputDocumentation(doc="[NAMES [NAMES ...]]\nNames of datasets in --variants")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="maximum distance between test and truth call")), ToolInput(tag="in_minlength", input_type=Int(optional=True), prefix="--minlength", doc=InputDocumentation(doc="Minimum length of SVs to be taken into account")), ToolInput(tag="in_ignore_type", input_type=Boolean(optional=True), prefix="--ignore_type", doc=InputDocumentation(doc="Ignore the type of the structural variant")), ToolInput(tag="in_keep_merged", input_type=File(optional=True), prefix="--keepmerged", doc=InputDocumentation(doc="Save merged vcf file")), ToolInput(tag="in_plot_out", input_type=String(optional=True), prefix="--plotout", doc=InputDocumentation(doc="Name of output plot")), ToolInput(tag="in_var_8", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Surpyvor_Venn_V0_1_0().translate("wdl", allow_empty_container=True)


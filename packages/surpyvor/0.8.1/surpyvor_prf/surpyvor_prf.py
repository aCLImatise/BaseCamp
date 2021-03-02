from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Surpyvor_Prf_V0_1_0 = CommandToolBuilder(tool="surpyvor_prf", base_command=["surpyvor", "prf"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information while running.")), ToolInput(tag="in_truth", input_type=String(optional=True), prefix="--truth", doc=InputDocumentation(doc="vcf containing truth set")), ToolInput(tag="in_test", input_type=String(optional=True), prefix="--test", doc=InputDocumentation(doc="vcf containing test set")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="maximum distance between test and truth call")), ToolInput(tag="in_minlength", input_type=Int(optional=True), prefix="--minlength", doc=InputDocumentation(doc="Minimum length of SVs to be taken into account")), ToolInput(tag="in_ignore_type", input_type=Boolean(optional=True), prefix="--ignore_type", doc=InputDocumentation(doc="Ignore the type of the structural variant")), ToolInput(tag="in_ignore_chrom_s", input_type=Boolean(optional=True), prefix="--ignore_chroms", doc=InputDocumentation(doc="[IGNORE_CHROMS [IGNORE_CHROMS ...]]\nChromosomes to ignore for prf calculation.")), ToolInput(tag="in_keep_merged", input_type=File(optional=True), prefix="--keepmerged", doc=InputDocumentation(doc="Save merged vcf file.")), ToolInput(tag="in_bar", input_type=Boolean(optional=True), prefix="--bar", doc=InputDocumentation(doc="Make stacked bar chart of SV lengths coloured by\nvalidation status")), ToolInput(tag="in_matrix", input_type=Boolean(optional=True), prefix="--matrix", doc=InputDocumentation(doc="Make a confusion matrix.")), ToolInput(tag="in_venn", input_type=Boolean(optional=True), prefix="--venn", doc=InputDocumentation(doc="Make a venn diagram."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Surpyvor_Prf_V0_1_0().translate("wdl", allow_empty_container=True)


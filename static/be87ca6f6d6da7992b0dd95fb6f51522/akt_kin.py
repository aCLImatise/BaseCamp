from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Akt_Kin_V0_1_0 = CommandToolBuilder(tool="akt_kin", base_command=["akt", "kin"], inputs=[ToolInput(tag="in_minkin", input_type=Boolean(optional=True), prefix="--minkin", doc=InputDocumentation(doc=":                   threshold for relatedness output (none)")), ToolInput(tag="in_freq_file", input_type=Boolean(optional=True), prefix="--freq-file", doc=InputDocumentation(doc=":                a file containing population allele frequencies to use in kinship calculation")), ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="--method", doc=InputDocumentation(doc=":                   type of estimator. 0:plink (default) 1:king-robust 2:genetic-relationship-matrix")), ToolInput(tag="in_af_tag", input_type=Boolean(optional=True), prefix="--aftag", doc=InputDocumentation(doc=":                    allele frequency tag (default AF)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc=":                  num threads")), ToolInput(tag="in_regions_file", input_type=Boolean(optional=True), prefix="--regions-file", doc=InputDocumentation(doc=":             restrict to regions listed in a file")), ToolInput(tag="in_regions", input_type=Boolean(optional=True), prefix="--regions", doc=InputDocumentation(doc=":                  chromosome region")), ToolInput(tag="in_targets_file", input_type=Boolean(optional=True), prefix="--targets-file", doc=InputDocumentation(doc=":             similar to -R but streams rather than index-jumps")), ToolInput(tag="in_targets", input_type=Boolean(optional=True), prefix="--targets", doc=InputDocumentation(doc=":                  similar to -r but streams rather than index-jumps")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc=":                    run kin without -R/-T/-F")), ToolInput(tag="in_samples", input_type=Boolean(optional=True), prefix="--samples", doc=InputDocumentation(doc=":                  list of samples")), ToolInput(tag="in_samples_file", input_type=Boolean(optional=True), prefix="--samples-file", doc=InputDocumentation(doc=":             list of samples, file")), ToolInput(tag="in_in_dot_bcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Akt_Kin_V0_1_0().translate("wdl", allow_empty_container=True)


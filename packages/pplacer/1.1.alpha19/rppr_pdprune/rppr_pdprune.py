from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rppr_Pdprune_V0_1_0 = CommandToolBuilder(tool="rppr_pdprune", base_command=["rppr", "pdprune"], inputs=[ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Output the results as csv instead of a padded matrix.")), ToolInput(tag="in_cut_off", input_type=Boolean(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="Specify the maximum branch length to be trimmed.")), ToolInput(tag="in_leaves", input_type=Boolean(optional=True), prefix="--leaves", doc=InputDocumentation(doc="Specify the maximum number of leaves to leave un-trimmed.")), ToolInput(tag="in_names_only", input_type=Boolean(optional=True), prefix="--names-only", doc=InputDocumentation(doc="Only split out a list of names, rather than names and PD decrease.")), ToolInput(tag="in_unsafe", input_type=Boolean(optional=True), prefix="--unsafe", doc=InputDocumentation(doc="Don't perform internal checks.")), ToolInput(tag="in_never_prune_from", input_type=Boolean(optional=True), prefix="--never-prune-from", doc=InputDocumentation(doc="Provide a file containing sequence names that will not be pruned.")), ToolInput(tag="in_never_prune_regex_from", input_type=Boolean(optional=True), prefix="--never-prune-regex-from", doc=InputDocumentation(doc="Provide a file containing regular expressions; sequence names matching one of these will not be pruned.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_pd_prune", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rppr_Pdprune_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rppr_Reclass_V0_1_0 = CommandToolBuilder(tool="rppr_reclass", base_command=["rppr", "reclass"], inputs=[ToolInput(tag="in_reference_package_path", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Reference package path. Required.")), ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Output the results as csv instead of a padded matrix.")), ToolInput(tag="in_number_run_pplacer", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="The number of processes to run pplacer with. default: 2")), ToolInput(tag="in_calculate_posterior_probabilities", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Calculate posterior probabilities when doing placements.")), ToolInput(tag="in_place_file", input_type=Boolean(optional=True), prefix="--placefile", doc=InputDocumentation(doc="Save the placefile generated by running pplacer to the specified location.")), ToolInput(tag="in_specified_path_write", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="If specified, the path to write the suggestion tree to.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_re_class", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rppr_Reclass_V0_1_0().translate("wdl", allow_empty_container=True)


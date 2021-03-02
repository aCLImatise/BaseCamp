from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Check_Labels_R_V0_1_0 = CommandToolBuilder(tool="check_labels.R", base_command=["check_labels.R"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Path to input metadata file in .tsv format")), ToolInput(tag="in_label_field", input_type=File(optional=True), prefix="--label-field", doc=InputDocumentation(doc="Name of label field in metadata file")), ToolInput(tag="in_condensed", input_type=Boolean(optional=True), prefix="--condensed", doc=InputDocumentation(doc="Is the provided metadata file in condensed format? Default: False")), ToolInput(tag="in_attribute_type_col_num", input_type=Int(optional=True), prefix="--attribute-type-col-num", doc=InputDocumentation(doc="Number of the attribute type field in condensed metadata file.\nDefault: 5")), ToolInput(tag="in_variable_col_num", input_type=Int(optional=True), prefix="--variable-col-num", doc=InputDocumentation(doc="Number of the label field in condensed metadata file. Default: 6")), ToolInput(tag="in_avoid_lowercase", input_type=Boolean(optional=True), prefix="--avoid-lowercase", doc=InputDocumentation(doc="Should setting the labels to lowercase be skipped? Default: False")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output-path", doc=InputDocumentation(doc="Output for updated file"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="Output for updated file"))], container="quay.io/biocontainers/cell-types-analysis:0.1.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Labels_R_V0_1_0().translate("wdl")


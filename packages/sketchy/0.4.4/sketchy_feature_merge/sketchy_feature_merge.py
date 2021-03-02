from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Sketchy_Feature_Merge_V0_1_0 = CommandToolBuilder(tool="sketchy_feature_merge", base_command=["sketchy", "feature", "merge"], inputs=[ToolInput(tag="in_path_sketch_file", input_type=File(optional=True), prefix="--sketch", doc=InputDocumentation(doc="Path to sketch file to parse indices from\n[required]")), ToolInput(tag="in_features", input_type=File(optional=True), prefix="--features", doc=InputDocumentation(doc="Path to genotype feature file to merge indices with")), ToolInput(tag="in_key", input_type=File(optional=True), prefix="--key", doc=InputDocumentation(doc="Legacy key file to translate UUIDs [dep.]")), ToolInput(tag="in_index_column", input_type=String(optional=True), prefix="--index_column", doc=InputDocumentation(doc="Feature index column to merge indices on [idx]")), ToolInput(tag="in_mash_column", input_type=String(optional=True), prefix="--mash_column", doc=InputDocumentation(doc="Mash index column to merge indices on [ids]")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix for output file: {prefix}.tsv [sketchy]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output for merge operations")), ToolInput(tag="in_var_7", input_type=String(), position=0, doc=InputDocumentation(doc="[required]"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix for output file: {prefix}.tsv [sketchy]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Feature_Merge_V0_1_0().translate("wdl", allow_empty_container=True)


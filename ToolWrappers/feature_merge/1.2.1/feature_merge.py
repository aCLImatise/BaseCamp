from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Feature_Merge_V0_1_0 = CommandToolBuilder(tool="feature_merge", base_command=["feature_merge"], inputs=[ToolInput(tag="in_version_and_exit", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="version and exit")), ToolInput(tag="in_seperated_types_merge", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="seperated types of features to merge. Must be terms or accessions from the SOFA sequence ontology, 'ALL', or 'NONE'. (Can be provided more than once to specify multiple merge groups)")), ToolInput(tag="in_strand_merge_feature", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="strand, merge feature regardless of strand")), ToolInput(tag="in_sequence_i_d", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="sequence id, merge feature regardless of sequence id")), ToolInput(tag="in_merge_features_identical", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="merge features with identical coordinates")), ToolInput(tag="in_distance_features_merge", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="distance between features to merge")), ToolInput(tag="in_component_features_output", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="component features from output")), ToolInput(tag="in_strategy_used_deal", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="strategy used to deal with id collisions between input files.\nmerge: attributes of all features with the same primary key will be merged\nappend: entry will have a unique, autoincremented primary key assigned to it (default)\nerror: exception will be raised. This means you will have to edit the file yourself to fix the duplicated IDs\nskip: ignore duplicates, emitting a warning\nreplace: keep last duplicate\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Feature_Merge_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Sketchy_Feature_Lineage_V0_1_0 = CommandToolBuilder(tool="sketchy_feature_lineage", base_command=["sketchy", "feature", "lineage"], inputs=[ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="Path to data file to summarize trait data from\n[required]  [required]")), ToolInput(tag="in_lineage", input_type=File(optional=True), prefix="--lineage", doc=InputDocumentation(doc="Trait to show summary for; columns in data file\n[required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to legacy key file to extract identifiers\n[lineage.index.tsv]")), ToolInput(tag="in_summary", input_type=Boolean(optional=True), prefix="--summary", doc=InputDocumentation(doc="Print summary of lineage features to terminal [false]")), ToolInput(tag="in_file_path", input_type=File(optional=True), prefix="--file_path", doc=InputDocumentation(doc="Path to collect files for this lineage from [none]")), ToolInput(tag="in_pattern", input_type=String(optional=True), prefix="--pattern", doc=InputDocumentation(doc="Pattern to match files with their name identifier\n[*.fastq.gz]")), ToolInput(tag="in_key", input_type=File(optional=True), prefix="--key", doc=InputDocumentation(doc="Path to legacy key file to extract identifiers [none]")), ToolInput(tag="in_re_index", input_type=Boolean(optional=True), prefix="--reindex", doc=InputDocumentation(doc="Reindex the lineage table [none]"))], outputs=[], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Feature_Lineage_V0_1_0().translate("wdl")


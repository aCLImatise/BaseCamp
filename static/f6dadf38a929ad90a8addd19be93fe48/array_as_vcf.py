from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Array, Boolean

Array_As_Vcf_V0_1_0 = CommandToolBuilder(tool="array_as_vcf", base_command=["array-as-vcf"], inputs=[ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="Path to array file (default: None)")), ToolInput(tag="in_build", input_type=String(optional=True), prefix="--build", doc=InputDocumentation(doc="Genome build (default: GRCh37)")), ToolInput(tag="in_sample_name", input_type=File(optional=True), prefix="--sample-name", doc=InputDocumentation(doc="Name of sample in VCF file (default: None)")), ToolInput(tag="in_chr_prefix", input_type=String(optional=True), prefix="--chr-prefix", doc=InputDocumentation(doc="Prefix to chromosome names (default: None)")), ToolInput(tag="in_lookup_table", input_type=File(optional=True), prefix="--lookup-table", doc=InputDocumentation(doc="Path to existing lookup table for rsIDs (default:\nNone)")), ToolInput(tag="in_dump", input_type=File(optional=True), prefix="--dump", doc=InputDocumentation(doc="Path to write generated lookup table (default: None)")), ToolInput(tag="in_encoding", input_type=File(optional=True), prefix="--encoding", doc=InputDocumentation(doc="Encoding of the array file (default: UTF-8)")), ToolInput(tag="in_exclude_assays", input_type=Array(t=String(), optional=True), prefix="--exclude-assays", doc=InputDocumentation(doc="Assay IDs for OpenArray to ignore (default: None)")), ToolInput(tag="in_no_ensembl_lookup", input_type=Boolean(optional=True), prefix="--no-ensembl-lookup", doc=InputDocumentation(doc="Lookup missing rsIDs on Ensembl (default: False)")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Set the verbosity of the logger (default: INFO)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Array_As_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gdtools_Count_V0_1_0 = CommandToolBuilder(tool="gdtools_COUNT", base_command=["gdtools", "COUNT"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="produce output for each mutation counted.")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="path to output CSV file with count data. (DEFAULT=count.csv)")), ToolInput(tag="in_detailed_output", input_type=File(optional=True), prefix="--detailed-output", doc=InputDocumentation(doc="path to optional output tab-delimited file with detailed information about all mutations (Default = OFF)")), ToolInput(tag="in_calculate_genome_size", input_type=Boolean(optional=True), prefix="--calculate-genome-size", doc=InputDocumentation(doc="use APPLY to calculate final genome sizes")), ToolInput(tag="in_base_substitution_statistics", input_type=Boolean(optional=True), prefix="--base-substitution-statistics", doc=InputDocumentation(doc="calculate detailed base substitution statistics")), ToolInput(tag="in_count_polymorphisms", input_type=Boolean(optional=True), prefix="--count-polymorphisms", doc=InputDocumentation(doc="count polymorphic mutations (those with frequencies < 1). (Default = FALSE)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="path to output CSV file with count data. (DEFAULT=count.csv)")), ToolOutput(tag="out_detailed_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_detailed_output", type_hint=File()), doc=OutputDocumentation(doc="path to optional output tab-delimited file with detailed information about all mutations (Default = OFF)"))], container="quay.io/biocontainers/breseq:0.35.5--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Count_V0_1_0().translate("wdl")


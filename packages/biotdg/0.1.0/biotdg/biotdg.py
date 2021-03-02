from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Biotdg_V0_1_0 = CommandToolBuilder(tool="biotdg", base_command=["biotdg"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference genome for the sample.")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="VCF file with mutations.")), ToolInput(tag="in_ploidy_table", input_type=File(optional=True), prefix="--ploidy-table", doc=InputDocumentation(doc="Tab-delimited file with two columns specifying the\nchromosome name and its ploidy. By default all\nchromosomes have a ploidy of 2.")), ToolInput(tag="in_sample_name", input_type=File(optional=True), prefix="--sample-name", doc=InputDocumentation(doc="Name of the sample to generate. The sample must be in\nthe VCF file.")), ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="Random seed for dwgsim (default: 1).")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read-length", doc=InputDocumentation(doc="Read length to be used by dwgsim.")), ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="--coverage", doc=InputDocumentation(doc="Average coverage for the generated reads. NOTE: This\nis multiplied by the ploidy of the chromosome.")), ToolInput(tag="in_read_one_error_rate", input_type=Int(optional=True), prefix="--read1-error-rate", doc=InputDocumentation(doc="Same as -e flag in dwgsim. per base/color/flow error\nrate of the first read.")), ToolInput(tag="in_read_two_error_rate", input_type=Int(optional=True), prefix="--read2-error-rate", doc=InputDocumentation(doc="Same as -E flag in dwgsim. per base/color/flow error\nrate of the second read.")), ToolInput(tag="in_maximum_n_number", input_type=Int(optional=True), prefix="--maximum-n-number", doc=InputDocumentation(doc="Maximum number of Ns allowed in a given read."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biotdg_V0_1_0().translate("wdl", allow_empty_container=True)


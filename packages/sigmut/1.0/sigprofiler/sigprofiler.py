from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Sigprofiler_V0_1_0 = CommandToolBuilder(tool="sigprofiler", base_command=["sigprofiler"], inputs=[ToolInput(tag="in_install_genome", input_type=Int(optional=True), prefix="--install_genome", doc=InputDocumentation(doc="Install de novo any of the following reference\ngenomes: 'GRCh37', 'GRCh38', 'mm9' or 'mm10'.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Provide a project name")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Provide a reference genome (ex: GRCh37, GRCh38, mm9 or\nmm10).")), ToolInput(tag="in_files", input_type=File(optional=True), prefix="--files", doc=InputDocumentation(doc="Path where the input vcf files are located.")), ToolInput(tag="in_exo_me", input_type=Boolean(optional=True), prefix="--exome", doc=InputDocumentation(doc="Flag to use only the exome or not.")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file that contains a list of ranges to be used in\ngenerating the matrices.")), ToolInput(tag="in_chrom", input_type=Boolean(optional=True), prefix="--chrom", doc=InputDocumentation(doc="Create the matrices on a per chromosome basis.")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="--plot", doc=InputDocumentation(doc="Generate the plots for each context.")), ToolInput(tag="in_tsb", input_type=Boolean(optional=True), prefix="--tsb", doc=InputDocumentation(doc="Performs a transcriptional strand bias test for the\n24, 384, and 6144 contexts.")), ToolInput(tag="in_gs", input_type=Boolean(optional=True), prefix="--gs", doc=InputDocumentation(doc="Performs a gene strand bias test."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sigprofiler_V0_1_0().translate("wdl", allow_empty_container=True)


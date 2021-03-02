from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cadd_Install_Sh_V0_1_0 = CommandToolBuilder(tool="cadd_install.sh", base_command=["cadd-install.sh"], inputs=[ToolInput(tag="in_tsvgz_file_generated", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="out tsv.gz file (generated from input file name if not set)")), ToolInput(tag="in_genome_build_supported", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="genome build (supported are GRCh37 and GRCh38 [default: GRCh38])")), ToolInput(tag="in_cadd_version_only", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="CADD version (only v1.6 possible with this set of scripts [default: v1.6])")), ToolInput(tag="in_include_annotation_required", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="include annotation in output\ninput vcf of vcf.gz file (required)")), ToolInput(tag="in_print_basic_information", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="print basic information about snakemake run")), ToolInput(tag="in_print_full_information", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="print full information about the snakemake run")), ToolInput(tag="in_number_cores_snakemake", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="number of cores that snakemake is allowed to use [default: 1]"))], outputs=[], container="quay.io/biocontainers/cadd-scripts:1.6--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cadd_Install_Sh_V0_1_0().translate("wdl")


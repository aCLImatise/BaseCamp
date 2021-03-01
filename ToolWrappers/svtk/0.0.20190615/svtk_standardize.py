from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Svtk_Standardize_V0_1_0 = CommandToolBuilder(tool="svtk_standardize", base_command=["svtk", "standardize"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="If provided, variant names will be overwritten with\nthis prefix.")), ToolInput(tag="in_include_reference_sites", input_type=Boolean(optional=True), prefix="--include-reference-sites", doc=InputDocumentation(doc="Include records where all samples are called 0/0 or\n./.")), ToolInput(tag="in_standardize_r", input_type=File(optional=True), prefix="--standardizer", doc=InputDocumentation(doc="Path to python file with custom standardizer\ndefinition. (Not yet supported.)")), ToolInput(tag="in_contigs", input_type=Int(optional=True), prefix="--contigs", doc=InputDocumentation(doc="Reference fasta index (.fai). If provided, contigs in\nindex will be used in VCF header. Otherwise all GRCh37\ncontigs will be used in header. Variants on contigs\nnot in provided list will be removed.")), ToolInput(tag="in_min_size", input_type=Int(optional=True), prefix="--min-size", doc=InputDocumentation(doc="Minimum SV size to report [50].")), ToolInput(tag="in_call_null_sites", input_type=Boolean(optional=True), prefix="--call-null-sites", doc=InputDocumentation(doc="Call sites with null genotypes (./.). Generally useful\nwhen an algorithm has been run on a single sample and\nhas only reported variant sites.\n")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="Raw VCF.")), ToolInput(tag="in_f_out", input_type=String(), position=1, doc=InputDocumentation(doc="Standardized VCF.")), ToolInput(tag="in_source", input_type=String(), position=2, doc=InputDocumentation(doc="Source algorithm. [delly,lumpy,manta,wham,melt]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Standardize_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String, Float

Medaka_Snp_V0_1_0 = CommandToolBuilder(tool="medaka_snp", base_command=["medaka", "snp"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Verbose logging of debug information. (default: 20)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Minimal logging; warnings only). (default: 20)")), ToolInput(tag="in_regions", input_type=Array(t=String(), optional=True), prefix="--regions", doc=InputDocumentation(doc="Genomic ref_names to process, or a bed file. (default:\nNone)")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Threshold for considering secondary calls. A value of\n1 will result in haploid decoding. (default: 0.04)")), ToolInput(tag="in_ref_vcf", input_type=String(optional=True), prefix="--ref_vcf", doc=InputDocumentation(doc="Reference vcf. (default: None)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Populate VCF info fields. (default: False)")), ToolInput(tag="in_ref_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Reference sequence .fasta file.")), ToolInput(tag="in_inputs", input_type=String(), position=1, doc=InputDocumentation(doc="Consensus .hdf files.")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="Output .vcf."))], outputs=[], container="quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Snp_V0_1_0().translate("wdl")


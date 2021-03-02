from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Bayestypertools_Filter_V0_1_0 = CommandToolBuilder(tool="bayesTyperTools_filter", base_command=["bayesTyperTools", "filter"], inputs=[ToolInput(tag="in_arg_variant_file", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --variant-file ] arg             variant file (vcf format).")), ToolInput(tag="in_arg_output_prefix", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-prefix ] arg            output prefix.")), ToolInput(tag="in_compress_output_files", input_type=File(optional=True), prefix="-z", doc=InputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.")), ToolInput(tag="in_min_homozygote_genotypes", input_type=Int(optional=True), prefix="--min-homozygote-genotypes", doc=InputDocumentation(doc="(=0)   filter variants with less than <value> homozygote genotypes (calculated before other filters).")), ToolInput(tag="in_min_genotype_posterior", input_type=Int(optional=True), prefix="--min-genotype-posterior", doc=InputDocumentation(doc="(=0.99)  filter genotypes with a posterior probability (GPP) below <value>.")), ToolInput(tag="in_min_number_of_km_ers", input_type=Int(optional=True), prefix="--min-number-of-kmers", doc=InputDocumentation(doc="(=1)        filter sampled alleles with less than <value> kmers (NAK).")), ToolInput(tag="in_km_er_coverage_file", input_type=File(optional=True), prefix="--kmer-coverage-file", doc=InputDocumentation(doc="(=bayestyper_genomic_parameters.txt)\nsample kmer coverage file used for filtering sampled alleles with a low fraction of observed kmers (FAK).\n"))], outputs=[ToolOutput(tag="out_compress_output_files", output_type=File(optional=True), selector=InputSelector(input_to_select="in_compress_output_files", type_hint=File()), doc=OutputDocumentation(doc="[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bayestypertools_Filter_V0_1_0().translate("wdl", allow_empty_container=True)


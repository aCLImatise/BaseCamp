from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Boolean, Int

Metachip_Pi_V0_1_0 = CommandToolBuilder(tool="MetaCHIP_PI", base_command=["MetaCHIP", "PI"], inputs=[ToolInput(tag="in_input_genome_folder", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc="input genome folder")), ToolInput(tag="in_tax_on", input_type=String(optional=True), prefix="-taxon", doc=InputDocumentation(doc="taxonomic classification of input genomes")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="output prefix")), ToolInput(tag="in_grouping_rank_choose", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="grouping rank, choose from p (phylum), c (class), o (order), f\n(family), g (genus) or any combination of them")), ToolInput(tag="in_grouping_file", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="grouping file")), ToolInput(tag="in_file_extension", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="file extension")), ToolInput(tag="in_non_meta", input_type=Boolean(optional=True), prefix="-nonmeta", doc=InputDocumentation(doc="provide if input genomes are NOT metagenome-assembled genomes")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads, default: 1")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="not report progress")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="force overwrite existing results")), ToolInput(tag="in_no_blast", input_type=Boolean(optional=True), prefix="-noblast", doc=InputDocumentation(doc="skip running all-vs-all blastn, provide if you have other ways\n(e.g. with job scripts) to speed up the blastn step"))], outputs=[], container="quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metachip_Pi_V0_1_0().translate("wdl")


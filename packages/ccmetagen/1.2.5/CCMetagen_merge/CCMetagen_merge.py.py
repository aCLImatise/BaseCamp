from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Ccmetagen_Merge_Py_V0_1_0 = CommandToolBuilder(tool="CCMetagen_merge.py", base_command=["CCMetagen_merge.py"], inputs=[ToolInput(tag="in_input_fp", input_type=File(optional=True), prefix="--input_fp", doc=InputDocumentation(doc="Path to the folder containing CCMetagen text results.\nNote that files must end with '.csv' and the folder\nshould not contain other .csv files")), ToolInput(tag="in_tax_level", input_type=String(optional=True), prefix="--tax_level", doc=InputDocumentation(doc="Taxonomic level to merge the results. Options:\nClosest_match (includes different genes for the same\nspecies), Species (Default), Genus, Family, Order,\nClass, Phylum, Kingdom and Superkingdom")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output_fp", doc=InputDocumentation(doc="Path to the output file. Default = merged_samples")), ToolInput(tag="in_keep_or_remove", input_type=String(optional=True), prefix="--keep_or_remove", doc=InputDocumentation(doc="keep or remove taxa. Options = k (keep), r (remove)\nand n (none, default)")), ToolInput(tag="in_filtering_tax_level", input_type=String(optional=True), prefix="--filtering_tax_level", doc=InputDocumentation(doc="level to perform taxonomic filtering, default = none")), ToolInput(tag="in_tax_a_list", input_type=String(optional=True), prefix="--taxa_list", doc=InputDocumentation(doc="list taxon names (comma-separated) that you want to\nkeep or exclude\n"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="Path to the output file. Default = merged_samples"))], container="quay.io/biocontainers/ccmetagen:1.2.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ccmetagen_Merge_Py_V0_1_0().translate("wdl")

